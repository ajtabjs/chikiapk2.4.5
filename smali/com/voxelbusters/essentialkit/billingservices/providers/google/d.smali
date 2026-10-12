.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;->onQueryProductDetailsInternalSuccess(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const-string v0, "You may need to update google play app!"

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v2, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;->onQueryProductDetailsInternalFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
