.class final Lcom/unity3d/player/l0;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p2, p0, Lcom/unity3d/player/l0;->b:Landroid/content/res/Configuration;

    invoke-direct {p0, p1}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/l0;->b:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smsendFontScaleChangedNotification(F)V

    return-void
.end method
