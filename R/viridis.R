#' Original 'viridis', 'cividis', 'rocket' and 'mako' color maps
#'
#' A dataset containing the original RGB values of the default Matplotlib color
#'  map ('viridis'), the color vision deficiencies optimized color map
#'  'cividis' and the Seaborn color maps 'rocket' and 'mako'.
#'  Sources: \url{https://github.com/BIDS/colormap/blob/master/option_d.py} and
#'  \url{https://github.com/pnnl/cmaputil/blob/master/colormaps/cividis.txt}.
#'
#' @format A data frame with 1792 rows and 4 variables:
#' \itemize{
#'   \item R: Red value
#'   \item G: Green value
#'   \item B: Blue value
#'   \item opt: The colormap "option" (A: magma; B: inferno; C: plasma;
#'   D: viridis; E: cividis; F: rocket; G: mako)
#' }
"viridis.map"


#' Matplotlib 'viridis', 'cividis', 'rocket' and 'mako' color maps
#'
#' This function creates a vector of \code{n} equally spaced colors along the
#' Matplolib 'viridis' color map created by \href{https://github.com/stefanv}{Stéfan van der Walt}
#' and \href{https://github.com/njsmith}{Nathaniel Smith}. This color map is
#' designed in such a way that it will analytically be perfectly perceptually-uniform,
#' both in regular form and also when converted to black-and-white. It is also
#' designed to be perceived by readers with the most common form of color blindness.
#'
#' A corrected version of 'viridis', 'cividis', was developed by
#' \href{https://github.com/jamienunez}{Jamie R. Nuñez} and
#' \href{https://github.com/smcolby}{Sean M. Colby}. It is optimal for viewing by
#' those with color vision deficiency. 'cividis' is designed to be perfectly
#' perceptually-uniform, both in regular form and also when converted to
#' black-and-white, and can be perceived by readers with all forms of color
#' blindness.
#'
#' @param n The number of colors (\eqn{\ge 1}) to be in the palette.
#'
#' @param alpha	The alpha transparency, a number in [0,1], see argument alpha in
#' \code{\link[grDevices]{hsv}}.
#'
#' @param begin The (corrected) hue in [0,1] at which the viridis colormap begins.
#'
#' @param end The (corrected) hue in [0,1] at which the viridis colormap ends.
#'
#' @param direction Sets the order of colors in the scale. If 1, the default, colors
#' are ordered from darkest to lightest. If -1, the order of colors is reversed.
#'
#' @param option A character string indicating the colormap option to use. Seven
#' options are available: "magma" (or "A"), "inferno" (or "B"), "plasma" (or "C"),
#' "viridis" (or "D", the default option), "cividis" (or "E"), "rocket" (or "F") and
#' "mako" (or "G").
#'
#' @return \code{viridis} returns a character vector, \code{cv}, of color hex
#' codes. This can be used either to create a user-defined color palette for
#' subsequent graphics by \code{palette(cv)}, a \code{col =} specification in
#' graphics functions or in \code{par}.
#'
#' @author Simon Garnier: \email{garnier@@njit.edu}, \href{https://twitter.com/sjmgarnier}{@@sjmgarnier}
#'
#' @details
#'
#' \if{html}{Here are the color scales:
#'
#'   \out{<div style="text-align: center">}\figure{viridis-scales.png}{options: style="width:750px;max-width:90\%;"}\out{</div>}
#'
#'   }
#' \if{latex}{Here are the color scales:
#'
#'   \out{\begin{center}}\figure{viridis-scales.png}\out{\end{center}}
#'   }
#'
#' \code{magma()}, \code{plasma()}, \code{inferno()}, \code{cividis()}, \code{rocket()}
#' and \code{mako()} are convenience functions for the other colormap options, which
#' are useful the scale must be passed as a function name.
#'
#' Semi-transparent colors (\eqn{0 < alpha < 1}) are supported only on some
#' devices: see \code{\link[grDevices]{rgb}}.
#'
#' @examples
#' library(ggplot2)
#' library(hexbin)
#'
#' dat <- data.frame(x = rnorm(10000), y = rnorm(10000))
#'
#' ggplot(dat, aes(x = x, y = y)) +
#'   geom_hex() + coord_fixed() +
#'   scale_fill_gradientn(colours = viridis(256, option = "D"))
#'
#' # using code from RColorBrewer to demo the palette
#' n = 200
#' image(
#'   1:n, 1, as.matrix(1:n),
#'   col = viridis(n, option = "D"),
#'   xlab = "viridis n", ylab = "", xaxt = "n", yaxt = "n", bty = "n"
#' )
#' @export
#'
viridis <- function(n, alpha = 1, begin = 0, end = 1, direction = 1, option = "D") {

  if (begin < 0 | begin > 1 | end < 0 | end > 1) {
    stop("begin and end must be in [0,1]")
  }

  if (abs(direction) != 1) {
    stop("direction must be 1 or -1")
  }

  if (n == 0) {
    return(character(0))
  }

  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }

  option <- switch(EXPR = option,
                   A = "A", magma = "A",
                   B = "B", inferno = "B",
                   C = "C", plasma = "C",
                   D = "D", viridis = "D",
                   E = "E", cividis = "E",
                   E = "F", rocket = "F",
                   E = "G", mako = "G",
                   H = "H", anxiety = "H",
                   I = "I", castle = "I",
                   J = "J", deepriver = "J",
                   K = "K", forests = "K",
                   L = "L", guidance = "L",
                   M = "M", influenza = "M",
                   N = "N", mardigras = "N",
                   O = "O", vaporwave = "O",
                   P = "P", toutsuite = "P",
                   Q = "Q", uc = "Q",
                   R = "R", utrgv = "R")

  map <- viridisLite::viridis.map[viridisLite::viridis.map$opt == option, ]
  map_cols <- grDevices::rgb(map$R, map$G, map$B)
  fn_cols <- grDevices::colorRamp(map_cols, space = "Lab", interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n)) / 255
  grDevices::rgb(cols[, 1], cols[, 2], cols[, 3], alpha = alpha)
}


#' @rdname viridis
#'
#' @return  \code{viridisMap} returns a \code{n} lines data frame containing the
#' red (\code{R}), green (\code{G}), blue (\code{B}) and alpha (\code{alpha})
#' channels of \code{n} equally spaced colors along the 'viridis' color map.
#' \code{n = 256} by default, which corresponds to the data from the original
#' 'viridis' color map in Matplotlib.
#' @export
viridisMap <- function(n = 256, alpha = 1, begin = 0, end = 1, direction = 1, option = "D") { # nocov start
  if (begin < 0 | begin > 1 | end < 0 | end > 1) {
    stop("begin and end must be in [0,1]")
  }

  if (abs(direction) != 1) {
    stop("direction must be 1 or -1")
  }

  if (n == 0) {
    return(data.frame(R = double(0), G = double(0), B = double(0), alpha = double(0)))
  }

  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }

  option <- switch(EXPR = option,
                   A = "A", magma = "A",
                   B = "B", inferno = "B",
                   C = "C", plasma = "C",
                   D = "D", viridis = "D",
                   E = "E", cividis = "E",
                   E = "F", rocket = "F",
                   E = "G", mako = "G",
                    H = "H", anxiety = "H",
                    I = "I", castle = "I",
                   J = "J", deepriver = "J",
                   K = "K", forests = "K",
                   L = "L", guidance = "L",
                   M = "M", influenza = "M",
                   N = "N", mardigras = "N",
                   O = "O", vaporwave = "O",
                   P = "P", toutsuite = "P",
                   Q = "Q", uc = "Q",
                   R = "R", utrgv = "R",
                   {warning(paste0("Option '", option, "' does not exist. Defaulting to 'viridis'.")); "D"})

  map <- viridisLite::viridis.map[viridisLite::viridis.map$opt == option, ]
  map_cols <- grDevices::rgb(map$R, map$G, map$B)
  fn_cols <- grDevices::colorRamp(map_cols, space = "Lab", interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n)) / 255
  data.frame(R = cols[, 1], G = cols[, 2], B = cols[, 3], alpha = alpha)
} # nocov end

#' @rdname viridis
#' @export
magma <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "magma")
}

#' @rdname viridis
#' @export
inferno <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "inferno")
}

#' @rdname viridis
#' @export
plasma <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "plasma")
}

#' @rdname viridis
#' @export
cividis <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "cividis")
}

#' @rdname viridis
#' @export
rocket <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "rocket")
}

#' @rdname viridis
#' @export
mako <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "mako")
}

#' @rdname viridis
#' @export
anxiety <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "anxiety")
}

#' @rdname viridis
#' @export
castle <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "castle")
}

#' @rdname viridis
#' @export
deepriver <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "deepriver")
}

#' @rdname viridis
#' @export
forests <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "forests")
}

#' @rdname viridis
#' @export
guidance <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "guidance")
}

#' @rdname viridis
#' @export
influenza <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "influenza")
}

#' @rdname viridis
#' @export
mardigras <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "mardigras")
}

#' @rdname viridis
#' @export
vaporwave <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "vaporwave")
}

#' @rdname viridis
#' @export
toutsuite <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "toutsuite")
}

#' @rdname viridis
#' @export
uc <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "uc")
}

#' @rdname viridis
#' @export
utrgv <- function(n, alpha = 1, begin = 0, end = 1, direction = 1) {
  viridis(n, alpha, begin, end, direction, option = "utrgv")
}
