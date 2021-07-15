a <- list.files(diretorio, full.names = TRUE)

g <- JurisMiner::dividir_sequencia(a, 100)

b <- tjsp::ler_cjpg(a[1:5])

cjpg <- purrr::map(g,~{

  tjsp::ler_cjpg(.x) %>%
     pull(processo)

})

saveRDS(cjpg,"data-raw/cjpg_processos.rds")
