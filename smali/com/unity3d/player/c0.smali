.class final Lcom/unity3d/player/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/g0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/c0;->a:Lcom/unity3d/player/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/c0;->a:Lcom/unity3d/player/g0;

    invoke-virtual {p1}, Lcom/unity3d/player/W;->invokeOnClose()V

    return-void
.end method
