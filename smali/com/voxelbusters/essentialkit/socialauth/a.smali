.class public final Lcom/voxelbusters/essentialkit/socialauth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/a;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {v0}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/a;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$000(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/a;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$100(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
