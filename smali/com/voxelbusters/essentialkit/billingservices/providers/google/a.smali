.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryProductDetailsInternalFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;->onQueryProductDetailsSuccess(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onQueryProductDetailsInternalSuccess(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->d:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;->onQueryProductDetailsSuccess(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
