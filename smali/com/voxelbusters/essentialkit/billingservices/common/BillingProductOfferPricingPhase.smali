.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/MustIncludeInCodeGenerator;
.end annotation


# instance fields
.field private final paymentMode:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

.field private final period:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

.field private final price:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

.field private final repeatCount:I


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->price:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->paymentMode:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->period:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

    iput p4, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->repeatCount:I

    return-void
.end method


# virtual methods
.method public getPaymentMode()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->paymentMode:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-object v0
.end method

.method public getPeriod()Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->period:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

    return-object v0
.end method

.method public getPrice()Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->price:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPricingPhase;->repeatCount:I

    return v0
.end method
