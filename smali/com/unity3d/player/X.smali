.class final Lcom/unity3d/player/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/Y;


# direct methods
.method constructor <init>(Lcom/unity3d/player/Y;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/X;->a:Lcom/unity3d/player/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/X;->a:Lcom/unity3d/player/Y;

    iget-object v0, v0, Lcom/unity3d/player/Y;->d:Lcom/unity3d/player/W;

    invoke-virtual {v0}, Lcom/unity3d/player/W;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/W;->a(Ljava/lang/String;Z)V

    return-void
.end method
