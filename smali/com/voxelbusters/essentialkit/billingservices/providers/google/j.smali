.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/j;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to query subscription purchases but in-app purchases were successful. ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/j;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;

    iget-object v0, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesSuccess(Ljava/util/List;)V

    return-void
.end method

.method public final onQueryPurchasesSuccess(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/j;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/j;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;

    iget-object v0, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesSuccess(Ljava/util/List;)V

    return-void
.end method
