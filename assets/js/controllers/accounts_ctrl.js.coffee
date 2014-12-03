@AccountsCtrl = ($scope, Wallet, $state,$stateParams, $modal) ->
  $scope.status    = Wallet.status
  $scope.total = Wallet.total
  $scope.settings = Wallet.settings
  
  $scope.selectedAccountIndex = $stateParams.accountIndex
    
  $scope.newAccount = () ->
    Wallet.clearAlerts()
    modalInstance = $modal.open(
      templateUrl: "partials/account-form"
      controller: AccountFormCtrl
    )

  #################################
  #           Private             #
  #################################
  
  $scope.didLoad = () ->
    $scope.accounts = Wallet.accounts

  # First load:      
  $scope.didLoad()