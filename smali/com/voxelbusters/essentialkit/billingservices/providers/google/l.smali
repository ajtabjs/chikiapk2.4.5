.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnect()V
    .locals 6

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->getQuantity()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "Quantity is greater than 1 in the purchase request. This is not supported by Google Play Billing. Considering quantity as 1."

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->getQuantity()I

    move-result v0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->c:Ljava/lang/String;

    new-instance v2, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->QuantityNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v4, "Quantity must be greater than 0"

    invoke-direct {v2, v3, v4}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$500(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "No billing product details were found. Make sure you call InitialiseStore before accessing this method"

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->c:Ljava/lang/String;

    new-instance v3, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->ProductNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    invoke-direct {v3, v4, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    :cond_4
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->a:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-virtual {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$700(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$600(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseSuccess(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response from LaunchBillingFlow : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Response Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->c:Ljava/lang/String;

    new-instance v3, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_6
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final onDisconnected(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->c:Ljava/lang/String;

    new-instance v2, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;->e:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    return-void
.end method
