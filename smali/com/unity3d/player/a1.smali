.class final Lcom/unity3d/player/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/K;


# instance fields
.field final synthetic a:Lcom/unity3d/player/b1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/b1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a1;->a:Lcom/unity3d/player/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a1;->a:Lcom/unity3d/player/b1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unity3d/player/b1;->a:Z

    iget-boolean v1, v0, Lcom/unity3d/player/b1;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/unity3d/player/b1;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method
