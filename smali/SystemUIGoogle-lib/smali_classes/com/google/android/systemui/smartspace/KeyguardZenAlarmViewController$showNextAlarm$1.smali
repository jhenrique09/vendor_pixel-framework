.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$showNextAlarm$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->showAlarm()V

    return-void
.end method
