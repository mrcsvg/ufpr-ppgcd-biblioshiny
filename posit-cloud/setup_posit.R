# =========================================================================
#  PREPARAR O PROJETO POSIT CLOUD  —  rode UMA vez no Console.
#  (Depois é só compartilhar o projeto; cada colega recebe uma copia
#   ja com os pacotes instalados.)
# =========================================================================

# 1) Instala o pacote e os dados de exemplo (leva alguns minutos)
install.packages(c("bibliometrix", "bibliometrixData"))

library(bibliometrix)

# 2) Cria um arquivo de dados de exemplo para carregar na INTERFACE (Biblioshiny).
#    Obs.: no Biblioshiny a importacao e por upload; para usar este arquivo,
#    baixe-o do projeto (Files > marque > More > Export) e depois carregue-o
#    na aba "Data" do Biblioshiny. No NOTEBOOK isso nao e necessario — o
#    codigo ja usa o dataset direto.
data(management, package = "bibliometrixData")
saveRDS(management, "corpus_exemplo.rds")

# 3) Mensagem final
cat("\n==================================================\n")
cat(" Projeto pronto!\n")
cat("--------------------------------------------------\n")
cat(" CODIGO   : abra 'atividade_biblioshiny.Rmd' e rode as celulas.\n")
cat(" INTERFACE: rode  biblioshiny()  no Console.\n")
cat("            (libere o pop-up para 'posit.cloud' se o navegador bloquear)\n")
cat("            No Biblioshiny: Data > Load data > 'corpus_exemplo.rds'\n")
cat("            ou importe um arquivo seu (Scopus/WoS/OpenAlex...).\n")
cat("==================================================\n")
