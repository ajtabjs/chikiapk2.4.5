.class final Lcom/unity3d/player/G0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/G0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/G0;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/G0;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/unity3d/player/G0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/player/G0;->c:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetd(Lcom/unity3d/player/G0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/player/G0;->d:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgete(Lcom/unity3d/player/G0;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/G0;->e:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetf(Lcom/unity3d/player/G0;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/G0;->f:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetg(Lcom/unity3d/player/G0;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/G0;->g:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeth(Lcom/unity3d/player/G0;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/G0;->h:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeti(Lcom/unity3d/player/G0;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/G0;->i:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputc(Lcom/unity3d/player/G0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/G0;->c:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputd(Lcom/unity3d/player/G0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/G0;->d:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fpute(Lcom/unity3d/player/G0;I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/G0;->e:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputf(Lcom/unity3d/player/G0;I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/G0;->f:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputi(Lcom/unity3d/player/G0;I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/G0;->i:I

    return-void
.end method

.method constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/G0;->c:Z

    iput-boolean v0, p0, Lcom/unity3d/player/G0;->d:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/unity3d/player/G0;->e:I

    iput v0, p0, Lcom/unity3d/player/G0;->f:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/player/G0;->i:I

    iput-object p1, p0, Lcom/unity3d/player/G0;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    return-void
.end method

.method private a(Lcom/unity3d/player/F0;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8dd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/unity3d/player/F0;->g:Lcom/unity3d/player/F0;

    invoke-direct {p0, v0}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    return-void
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/G0;->g:I

    iput p2, p0, Lcom/unity3d/player/G0;->h:I

    sget-object p1, Lcom/unity3d/player/F0;->i:Lcom/unity3d/player/F0;

    invoke-direct {p0, p1}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/unity3d/player/F0;->a:Lcom/unity3d/player/F0;

    invoke-direct {p0, v0}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    iget-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/unity3d/player/F0;->f:Lcom/unity3d/player/F0;

    invoke-direct {p0, v0}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    sget-object p1, Lcom/unity3d/player/F0;->e:Lcom/unity3d/player/F0;

    invoke-direct {p0, p1}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/unity3d/player/F0;->c:Lcom/unity3d/player/F0;

    invoke-direct {p0, v0}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Lcom/unity3d/player/F0;->b:Lcom/unity3d/player/F0;

    invoke-direct {p0, v0}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/unity3d/player/F0;->d:Lcom/unity3d/player/F0;

    invoke-direct {p0, v0}, Lcom/unity3d/player/G0;->a(Lcom/unity3d/player/F0;)V

    iget-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final run()V
    .locals 3

    const-string v0, "UnityMain"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/E0;

    invoke-direct {v2, p0}, Lcom/unity3d/player/E0;-><init>(Lcom/unity3d/player/G0;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unity3d/player/G0;->b:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
