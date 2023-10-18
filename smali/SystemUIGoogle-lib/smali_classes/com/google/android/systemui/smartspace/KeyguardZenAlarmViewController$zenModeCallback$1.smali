.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onZenChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->updateDnd()V

    return-void
.end method
