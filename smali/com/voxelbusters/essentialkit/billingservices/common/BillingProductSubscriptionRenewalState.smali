.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

.field public static final enum Expired:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

.field public static final enum InBillingRetryPeriod:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

.field public static final enum InGracePeriod:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

.field public static final enum Revoked:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

.field public static final enum Subscribed:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;
    .locals 6

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Subscribed:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Expired:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->InBillingRetryPeriod:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    sget-object v4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->InGracePeriod:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    sget-object v5, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Revoked:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    filled-new-array/range {v0 .. v5}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    const-string v1, "Subscribed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Subscribed:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    const-string v1, "Expired"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Expired:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    const-string v1, "InBillingRetryPeriod"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->InBillingRetryPeriod:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    const-string v1, "InGracePeriod"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->InGracePeriod:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    const-string v1, "Revoked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Revoked:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    return-object v0
.end method
