library(shiny)
library(limma)
library(gplots)

#load global gene array data
array <- read.csv(file="spleen_DE.csv", header=T)
row.names(array) <- array$X

array <- array[c(1:500),-1]

shinyServer(
  function(input, output) {
    # filter and then render a custom heatmap based of the users selection
    output$newarray <- renderPlot({
      
      # no filter
      if (input$variable =="global"){
      # display as heatmap
      heatmap.2(as.matrix(array), col = bluered(256), scale="row", key=T, keysize=1.5,density.info="none",trace="none",cexCol=0.6, cexRow=0.6, labRow=row.names(array), Colv=FALSE, dendrogram="row", margin=c(8,9))
      }
      if (input$variable =="immune"){
      # filter for immune related genes  
        immune <- read.csv(file="immune.csv", header=T)
        
        array <- array[row.names(array) %in% immune$ensembl_gene_id,]
        
        heatmap.2(as.matrix(array), col = bluered(256), scale="row", key=T, keysize=1.5,density.info="none",trace="none",cexCol=0.6, cexRow=0.6,labRow=row.names(array), Colv=FALSE, dendrogram="row", margin=c(8,9))
      }
      if (input$variable =="innate"){
      # filter for early immune response genes  
        innate <- read.csv(file="innate.csv", header=T)
        
        array <- array[row.names(array) %in% innate$ensembl_gene_id,]
        # display as heatmap  
        heatmap.2(as.matrix(array), col = bluered(256), scale="row", key=T, keysize=1.5,density.info="none",trace="none",cexCol=0.6, cexRow=0.6, labRow=row.names(array), Colv=FALSE, dendrogram="row", margin=c(8,9))
      }
      
      if (input$variable =="global_asymptom"){
      # filter for subjects that are resistant to infection  
        array <- array[,c(1:8)]
      # display as heatmap  
        heatmap.2(as.matrix(array), col = bluered(256), scale="row", key=T, keysize=1.5,density.info="none",trace="none",cexCol=0.6, cexRow=0.6, labRow=row.names(array), Colv=FALSE, dendrogram="row", margin=c(8,9))
      }
      if (input$variable =="global_symptom"){
      # filter for subjects that are susceptible to infection  
        
        array <- array[,c(9:12)]
        # display as heatmap  
        heatmap.2(as.matrix(array), col = bluered(256), scale="row", key=T, keysize=1.5,density.info="none",trace="none",cexCol=0.6, cexRow=0.6, labRow=row.names(array), Colv=FALSE, dendrogram="row", margin=c(8,9))
      }
    })
    
  }
)
