install.RtoolsPkgbuild <- function (choose_version = FALSE, check = TRUE, GUI = TRUE, page_with_download_url = "https://cran.r-project.org/bin/windows/Rtools/", 
          ...) 
{
  if (check & requireNamespace("pkgbuild")) {
    found_rtools <- pkgbuild::find_rtools()
    if (found_rtools) {
      cat("No need to install Rtools - You've got the relevant version of Rtools installed\n")
      return(invisible(FALSE))
    }
  }
  version_info2 <- structure(list(version = c("2.11", "2.12", 
                                              "2.13", "2.14", "2.15", "2.16", "3.0"), version_min = c("2.10.0", 
                                                                                                      "2.12.0", "2.13.0", "2.13.0", "2.14.2", "2.15.2", "2.15.2"), 
                                  version_max = c("2.11.1", "2.12.2", "2.13.2", "2.14.2", 
                                                  "2.15.1", "3.0.0", "3.0.0")), .Names = c("version", 
                                                                                           "version_min", "version_max"), row.names = c(NA, -7L), 
                             class = "data.frame")
  Rversion <- as.character(getRversion())
  Rversion_number <- turn.version.to.number(Rversion)
  ss_min <- Rversion_number >= turn.version.to.number(version_info2$version_min)
  ss_max <- Rversion_number <= turn.version.to.number(version_info2$version_max)
  version_to_install <- tail(version_info2$version[ss_min & 
                                                     ss_max], 1)
  if (length(version_to_install) > 0 & !choose_version) {
    version_to_install_no_dots <- gsub("\\.", "", version_to_install)
    exe_filename <- paste("Rtools", version_to_install_no_dots, 
                          ".exe", sep = "")
  }
  else {
    require2("htmltab")
    TABLE <- htmltab::htmltab(page_with_download_url)
    cat("Please remember you are using: ", R.version$version.string, 
        "\n")
    choices <- paste(TABLE[, "Download"], " (", TABLE[, 2], 
                     ")", sep = "")
    ROW_id <- menu(choices, graphics = GUI, title = "Which Rtools would you like to download?")
    if (ROW_id == 0) 
      return(FALSE)
    exe_filename <- TABLE[ROW_id, "Download"]
  }
  URL <- paste(page_with_download_url, exe_filename, sep = "")
  install.URL(URL, ...)
}