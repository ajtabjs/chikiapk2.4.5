.class final Lcom/unity3d/player/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/a/e;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/e;->a:Lcom/unity3d/player/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/e;->a:Lcom/unity3d/player/a/e;

    check-cast v0, Lcom/unity3d/player/F;

    iget-object v0, v0, Lcom/unity3d/player/F;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
