#!/usr/bin/env Rscript 

assunto <- "7779,6226,7781"

tjsp::baixar_cjpg(assunto = assunto,
                  inicio = "01/01/2021",
                  fim = "13/07/2021",
                  diretorio = "~/projetos/valor_causa/data-raw/cjpg"
                  )
