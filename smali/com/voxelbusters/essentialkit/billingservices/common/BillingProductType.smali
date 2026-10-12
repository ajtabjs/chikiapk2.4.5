.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

.field public static final enum Consumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

.field public static final enum NonConsumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

.field public static final enum Subscription:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;
    .locals 3

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Consumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->NonConsumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Subscription:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    filled-new-array {v0, v1, v2}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    const-string v1, "Consumable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Consumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    const-string v1, "NonConsumable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->NonConsumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    const-string v1, "Subscription"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Subscription:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object v0
.end method
