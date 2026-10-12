.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error fetching purchase details for productId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lcom/android/billingclient/api/Purchase;)V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;)Z

    move-result v1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$900(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/y;

    invoke-direct {v2, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->acknowledgePurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->b:Z

    if-nez v1, :cond_3

    const-string v1, "Product marked as an invalid purchase due its verification failure. Consuming silently as its an invalid purchase(verification failed)"

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$900(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/x;

    invoke-direct {v2, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->consumePurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IConsumePurchaseListener;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p1, "Shouldn\'t finish any non-purchased transaction. Returning..."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
