.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

.field public static final enum FreeTrial:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

.field public static final enum PayAsYouGo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

.field public static final enum PayUpFront:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;
    .locals 4

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->FreeTrial:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->PayAsYouGo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->PayUpFront:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    const-string v1, "FreeTrial"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->FreeTrial:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    const-string v1, "PayAsYouGo"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->PayAsYouGo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    const-string v1, "PayUpFront"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->PayUpFront:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferPaymentMode;

    return-object v0
.end method
