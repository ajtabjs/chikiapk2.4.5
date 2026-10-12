.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final currencySymbol:Ljava/lang/String;

.field private final localizedDisplay:Ljava/lang/String;

.field private final price:D


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->price:D

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->currencyCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->currencySymbol:Ljava/lang/String;

    iput-object p5, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->localizedDisplay:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->localizedDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;->price:D

    return-wide v0
.end method
