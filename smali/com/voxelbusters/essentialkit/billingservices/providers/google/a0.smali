.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method

.method public final onQueryPurchasesSuccess(Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restored purchase: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tag specified so querying only purchases related to this userTag"

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Skipping purchase found for a different user : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v2, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$200(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping adding to restore purchases as its orphan consumable product or not having purchased state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;->onSuccess(Ljava/util/List;)V

    return-void
.end method
