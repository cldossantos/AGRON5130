## grabbing all filenames
mod.files <- list.files(path = '.',
                        recursive = TRUE,
                        full.names = TRUE)

## removing rubrics :)
zip.ignore <- c('rubric',
		'zip-module\\.R',
		'*-lecture\\.Rmd',
		'lecture\\/data*',
		'questions\\.Rmd',
		'simulating-datasets\\.Rmd')

zip.ignore <- paste(zip.ignore, collapse = '|')
mod.files <- grep(zip.ignore,
                  mod.files,
                  ignore.case = TRUE,
                  value = TRUE,
                  invert = TRUE)

mod.name <- basename(normalizePath('.'))
mod.name <- paste0(mod.name, '.zip')
utils::zip(zipfile = mod.name, 
           files = mod.files)
