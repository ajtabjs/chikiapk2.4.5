.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/MustIncludeInCodeGenerator;
.end annotation


# instance fields
.field private final category:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

.field private final id:Ljava/lang/String;

.field pricingPhases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;->category:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;->pricingPhases:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;->category:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingPhases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;->pricingPhases:Ljava/util/List;

    return-object v0
.end method
