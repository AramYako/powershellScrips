$webappname = "mywebapp$(Get-Random)";
$webAppLocation = " westus2";

$createResourceGroup = $true
$resourceGroupName = "DemoRgGroup2";

$appServicePlaneName="DemoAzPlan";
$tier = "S1"

$addAppToResourceGroup ="DemoRgGroup2";


#Create resource group
 
if ($createResourceGroup -And $resourceGroupName) { #Check createResourceGroupAndName Is not empty
    New-AzResourceGroup -Name  $resourceGroupName -Location $webAppLocation
}


#Create an App Service plan

New-AzAppServicePlan -Name $appServicePlaneName -Location $webAppLocation -ResourceGroupName $addAppToResourceGroup -Tier $tier


#Create a web app

New-AzWebApp -Name $webappname -Location $webAppLocation -ResourceGroupName $addAppToResourceGroup -AppServicePlan $appServicePlaneName
