.class public final Lcom/voxelbusters/essentialkit/gameservices/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/e;->b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/e;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/achievement/AchievementBuffer;

    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->getCount()I

    move-result v0

    new-array v1, v0, [Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v3

    new-instance v4, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;

    invoke-direct {v4}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;-><init>()V

    iget-object v5, p0, Lcom/voxelbusters/essentialkit/gameservices/e;->b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-static {v5}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->access$000(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;)Landroid/content/Context;

    move-result-object v5

    invoke-interface {v3}, Lcom/google/android/gms/games/achievement/Achievement;->freeze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/achievement/Achievement;

    invoke-virtual {v4, v5, v3}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;->withAchievement(Landroid/content/Context;Lcom/google/android/gms/games/achievement/Achievement;)Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;->build()Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->release()V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/e;->b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-static {p1, v1}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->access$102(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;)[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/e;->a:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/e;->b:Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;->access$100(Lcom/voxelbusters/essentialkit/gameservices/GameAchievements;)[Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;-><init>([Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadAchievementsListener;->onSuccess(Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;)V

    :cond_1
    return-void
.end method
