.class public final synthetic Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/games/GamesSignInClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/games/GamesSignInClient;Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/gms/games/GamesSignInClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$4:Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/gms/games/GamesSignInClient;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda1;->f$4:Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->lambda$fetchServerAuthCode$2(Lcom/google/android/gms/games/GamesSignInClient;Ljava/lang/String;ZLjava/util/List;Lcom/voxelbusters/essentialkit/socialauth/ISocialAuth$IFetchServerCredentials;)V

    return-void
.end method
