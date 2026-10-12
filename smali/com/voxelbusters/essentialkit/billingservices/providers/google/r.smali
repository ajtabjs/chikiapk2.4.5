.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/r;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed querying purchases when trying to clear incomplete purchases."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final onQueryPurchasesSuccess(Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/r;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$900(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    move-result-object v1

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getQuantity()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-direct {v2, v3, v4, v5}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;->onPurchaseUpdated(Lcom/android/billingclient/api/Purchase;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V

    goto :goto_0

    :cond_2
    return-void
.end method
