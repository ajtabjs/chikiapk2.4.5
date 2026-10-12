.class final Lcom/unity3d/player/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/O0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/O0;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$smnativeSetLaunchURL(Ljava/lang/String;)V

    return-void
.end method
