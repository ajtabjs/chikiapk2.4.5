.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

.field public static final enum AutoRenewDisabled:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

.field public static final enum BillingError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

.field public static final enum DidNotConsentToPriceIncrease:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

.field public static final enum None:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

.field public static final enum ProductUnavailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;
    .locals 6

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->None:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->AutoRenewDisabled:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->BillingError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    sget-object v4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->DidNotConsentToPriceIncrease:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    sget-object v5, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->ProductUnavailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    filled-new-array/range {v0 .. v5}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->None:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    const-string v1, "Unknown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    const-string v1, "AutoRenewDisabled"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->AutoRenewDisabled:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    const-string v1, "BillingError"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->BillingError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    const-string v1, "DidNotConsentToPriceIncrease"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->DidNotConsentToPriceIncrease:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    const-string v1, "ProductUnavailable"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->ProductUnavailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    return-object v0
.end method
