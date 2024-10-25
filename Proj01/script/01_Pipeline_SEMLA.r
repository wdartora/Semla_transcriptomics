#install.packages("spatstat.utils")
#remotes::install_github("ludvigla/semla")

# Library
library(semla)
# version
packageVersion("semla")

# Set directory (6mo)
setwd("W:/Project/VISIUM/all_outs/6_mo/outs")

# 1) Get started ----------------------------------------------->>>>
#samples : file paths to expression matrices
#imgs : file paths to H&E images
#spotfiles : file paths to spot coordinate tables
#json : file paths to scale factor json files

data_root_directory <- file.path(system.file("extdata", package = "semla"), "*")

samples <- Sys.glob(paths = file.path(data_root_directory, 
                                      "filtered_feature_bc_matrix.h5"))

imgs <- Sys.glob(paths = file.path(data_root_directory, 
                                   "spatial", "tissue_lowres_image.jpg"))

spotfiles <- Sys.glob(paths = file.path(data_root_directory, 
                                        "spatial", "tissue_positions_list.csv"))

json <- Sys.glob(paths = file.path(data_root_directory, 
                                   "spatial", "scalefactors_json.json"))

# In my VISIUM data:
#> filtered_feature_bc_matrix.h5: Contém as contagens de genes filtradas por barcode, representando as células e seus genes após a filtragem.
#> metrics_summary.csv: Resumo das métricas de qualidade do experimento.
#> molecule_info.h5: Contém informações sobre moléculas individuais detectadas no experimento.
#> possorted_genome_bam.bam: Arquivo BAM ordenado, contendo informações de sequenciamento alinhadas ao genoma de referência.
#> possorted_genome_bam.bam.bai: Índice para o arquivo BAM.
#> probe_set.csv: Informações sobre as sondas utilizadas.
#> raw_feature_bc_matrix.h5: Contém dados brutos não filtrados de contagem de genes.
#> SUB-FOLDERS:
#> spatial
#> tissue_lowres_image.png: Imagem de baixa resolução do tecido.
#> tissue_positions.csv: Contém informações sobre as posições dos barcodes no tecido. Este arquivo é essencial para mapear os spots aos dados de expressão.
#> scalefactors_json.json: Contém os fatores de escala necessários para alinhar as imagens de diferentes resoluções (como alta e baixa resolução).
