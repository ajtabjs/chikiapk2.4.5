.class public final enum Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

.field public static final enum Friends:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

.field public static final enum Public:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;
    .locals 2

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->Public:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    sget-object v1, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->Friends:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    filled-new-array {v0, v1}, [Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    const-string v1, "Public"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->Public:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    const-string v1, "Friends"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->Friends:Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    invoke-static {}, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->$values()[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/gameservices/LeaderboardCollectionVariant;

    return-object v0
.end method
