.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;


# instance fields
.field public arg0:Ljava/lang/Object;

.field public arg1:Ljava/lang/Object;

.field public expandableNotificationRowComponentImpl:Ljava/lang/Object;

.field public remoteInputViewSubcomponentImpl:Ljava/lang/Object;

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

.field public final sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$InputSessionComponentImpl;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iput-object p3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->expandableNotificationRowComponentImpl:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->arg0:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->arg1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$RemoteInputViewSubcomponentImpl;->remoteInputViewSubcomponentImpl:Ljava/lang/Object;

    return-void
.end method
