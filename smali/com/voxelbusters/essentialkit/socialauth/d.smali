.class public final Lcom/voxelbusters/essentialkit/socialauth/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$402(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/google/android/gms/games/Player;)Lcom/google/android/gms/games/Player;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$400(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)Lcom/google/android/gms/games/Player;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$502(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Z)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$400(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;)Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$600(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Lcom/google/android/gms/games/Player;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    const-string v0, "Failed to get current player."

    invoke-static {p1, v0}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$700(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Localized message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$502(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Z)Z

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/socialauth/d;->a:Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;->access$700(Lcom/voxelbusters/essentialkit/socialauth/GoogleAuth;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
