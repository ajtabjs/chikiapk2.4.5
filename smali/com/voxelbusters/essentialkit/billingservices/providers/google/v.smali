.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/ArrayList;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryProductDetailsFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onQuerySkuDetailsFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method

.method public final onQueryProductDetailsSuccess(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const-string v0, "onQuerySkuDetailsSuccess"

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$302(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$300(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v1, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$300(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$500(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$300(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$600(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->access$300(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2, v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;->onSuccess(Ljava/util/List;Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;)V

    :cond_1
    return-void
.end method
