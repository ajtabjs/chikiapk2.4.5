.class public final Lcom/voxelbusters/essentialkit/uiviews/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/g;->a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "On Time Set"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/g;->a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;->onSuccess(II)V

    :cond_0
    return-void
.end method
