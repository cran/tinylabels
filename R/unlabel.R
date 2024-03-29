#' Remove Labels from Objects
#'
#' Remove [variable_labels] from a labelled vector or from the columns of a data frame.
#'
#' @param x An \R object.
#' @return Object as `x` but without variable labels and with class `tiny_labelled` removed.
#' @export

unlabel <- function(x) {
  UseMethod("unlabel")
}

#' @export

unlabel.default <- function(x) {
  attr(x, "label") <- NULL
  attr(x, "unit") <- NULL

  if(is.atomic(x) && !inherits(x, c("factor", "difftime", "POSIXct", "POSIXlt", "Date"))) {
    x <- unclass(x)
  } else {
    class(x) <- setdiff(class(x), "tiny_labelled")
  }
  x
}

#' @method unlabel data.frame
#' @export

unlabel.data.frame <- function(x) {
  for (i in seq_len(ncol(x))) {
    x[[i]] <- unlabel(x[[i]])
  }
  x
}

