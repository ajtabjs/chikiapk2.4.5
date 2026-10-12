.class public final synthetic Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/google/android/gms/games/GamesSignInClient;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;ZLcom/google/android/gms/games/GamesSignInClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;->f$0:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    iput-boolean p2, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/games/GamesSignInClient;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;->f$0:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    iget-boolean v1, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/games/GamesSignInClient;

    invoke-virtual {v0, v1, v2, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->lambda$Authenticate$0$com-voxelbusters-essentialkit-socialauth-GoogleAuth(ZLcom/google/android/gms/games/GamesSignInClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
