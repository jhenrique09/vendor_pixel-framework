.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mIsGestureNav:Z

    return-void
.end method
