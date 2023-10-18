.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;


# instance fields
.field public clickIntentAction:Ljava/lang/String;

.field public headerText:Ljava/lang/Integer;

.field public nodeLabel:Ljava/lang/String;

.field public final sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

.field public final sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v2, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;

    iget-object v3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->sysUIGoogleGlobalRootComponent:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    iget-object v4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->sysUIGoogleSysUIComponentImpl:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v5, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SectionHeaderControllerSubcomponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method
