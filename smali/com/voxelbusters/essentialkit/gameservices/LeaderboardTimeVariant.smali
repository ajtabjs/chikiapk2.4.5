.class public final enum Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

.field public static final enum AllTime:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

.field public static final enum Daily:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

.field public static final enum Weekly:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;
    .locals 3

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->Daily:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    sget-object v1, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->Weekly:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->AllTime:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    filled-new-array {v0, v1, v2}, [Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    const-string v1, "Daily"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->Daily:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    const-string v1, "Weekly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->Weekly:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    const-string v1, "AllTime"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->AllTime:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    invoke-static {}, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->$values()[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/gameservices/LeaderboardTimeVariant;

    return-object v0
.end method
