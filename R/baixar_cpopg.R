#!/usr/bin/env Rscript

processos <- readRDS("~/projetos/valor_causa/data-raw/cjpg_processos.rds")

diretorio <- "~/projetos/valor_causa/data-raw/cpopg"

purrr::walk(processos,~{

  tjsp::autenticar()

  tjsp::baixar_cpopg(.x, diretorio = diretorio)

})
