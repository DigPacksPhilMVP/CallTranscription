# Call Transcription service

## Overview

This wiki lays out the solution architecture and design patterns utilised to achieve the automatic transcription of audio files (two-party telephone conversations), using the below infrastructure.

* Azure AI Speech - Standard tier
* Azure AI Language - Standard tier
* Azure Blob Storage - Standard tier
* Power Automate (Connectors: Azure Batch Speech-to-text [Standard], SharePoint [Standard], Blob Storage [Premium], Dataverse [Premium], Outlook 365 [Standard])

The deployment of the Azure services above is undertaken via infrastructure-as-code (IaC) using GitHub Actions, as opposed to manual creation of services within the Azure Portal. 

Visit this repository's Wiki for further information and step-by-step guides.
***
