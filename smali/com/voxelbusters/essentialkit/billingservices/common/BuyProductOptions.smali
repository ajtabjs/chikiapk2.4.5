.class public Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private offerId:Ljava/lang/String;

.field private quantity:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->quantity:I

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->offerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOfferId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    iget v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->quantity:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->tag:Ljava/lang/String;

    return-object v0
.end method
