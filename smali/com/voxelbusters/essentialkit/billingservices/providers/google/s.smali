.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->b:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;->onQueryProductDetailsSuccess(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onQueryPurchasesSuccess(Ljava/util/List;)V
    .locals 2

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;->b:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;->onQueryProductDetailsSuccess(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
