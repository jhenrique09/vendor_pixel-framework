.class public final Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mActionId:I

.field public final mActionLabel:Ljava/lang/String;

.field public final mActionWrapper:Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$1;

.field public final mCustomAction:Ljava/lang/Runnable;

.field public final mViewForAction:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/systemui/dreamliner/DockGestureController$$ExternalSyntheticLambda0;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;->mActionId:I

    sget v0, Lcom/google/common/base/Platform;->$r8$clinit:I

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    const-string v1, "action label cannot be null or empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "view cannot be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;->mActionLabel:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;->mViewForAction:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;->mCustomAction:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$1;

    invoke-direct {p1}, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$1;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction;->mActionWrapper:Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$1;

    return-void
.end method
