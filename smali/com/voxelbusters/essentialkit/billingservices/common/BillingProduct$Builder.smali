.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;-><init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/a;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    return-void
.end method


# virtual methods
.method public build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->access$302(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->access$102(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIsAvailable(Z)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->access$502(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Z)Z

    return-object p0
.end method

.method public setOffers(Ljava/util/List;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;",
            ">;)",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->access$702(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setPrice(Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->access$402(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    return-object p0
.end method

.method public setSubscriptionInfo(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->access$602(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;->billingProduct:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->access$202(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
