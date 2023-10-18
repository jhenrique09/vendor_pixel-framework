.class public final Lcom/google/android/systemui/dreamliner/DockGestureController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockGestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    :cond_0
    return-void
.end method
