.class public final synthetic Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hideGear()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.systemui.dreamliner.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->sendProtectedBroadcast(Landroid/content/Intent;)V

    return-void
.end method
