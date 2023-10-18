.class public final Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
