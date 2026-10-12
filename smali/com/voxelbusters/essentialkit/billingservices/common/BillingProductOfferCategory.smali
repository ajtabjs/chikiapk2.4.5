.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

.field public static final enum Code:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

.field public static final enum Introductory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

.field public static final enum Promotional:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
    .locals 4

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Introductory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Promotional:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Code:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    filled-new-array {v0, v1, v2, v3}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    const-string v1, "Introductory"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Introductory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    const-string v1, "Promotional"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Promotional:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    const-string v1, "Code"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Code:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object v0
.end method
