as yet unclassified
example1JSON

	^ '
[
  {
    "path":"/tmp/example1.js",
    "type":"script",
    "status":"ok",
    "result":{
      "type":"Program",
      "body":[
        {
          "type":"ExpressionStatement",
          "expression":{
            "type":"Literal",
            "value":"use strict",
            "raw":"''use strict''",
            "range":[
              0,
              12
            ],
            "loc":{
              "start":{
                "line":1,
                "column":0
              },
              "end":{
                "line":1,
                "column":12
              }
            }
          },
          "directive":"use strict",
          "range":[
            0,
            13
          ],
          "loc":{
            "start":{
              "line":1,
              "column":0
            },
            "end":{
              "line":1,
              "column":13
            }
          }
        },
        {
          "type":"VariableDeclaration",
          "declarations":[
            {
              "type":"VariableDeclarator",
              "id":{
                "type":"Identifier",
                "name":"username",
                "range":[
                  21,
                  29
                ],
                "loc":{
                  "start":{
                    "line":3,
                    "column":6
                  },
                  "end":{
                    "line":3,
                    "column":14
                  }
                }
              },
              "init":{
                "type":"Literal",
                "value":"doge",
                "raw":"''doge''",
                "range":[
                  32,
                  38
                ],
                "loc":{
                  "start":{
                    "line":3,
                    "column":17
                  },
                  "end":{
                    "line":3,
                    "column":23
                  }
                }
              },
              "range":[
                21,
                38
              ],
              "loc":{
                "start":{
                  "line":3,
                  "column":6
                },
                "end":{
                  "line":3,
                  "column":23
                }
              }
            }
          ],
          "kind":"const",
          "range":[
            15,
            39
          ],
          "loc":{
            "start":{
              "line":3,
              "column":0
            },
            "end":{
              "line":3,
              "column":24
            }
          }
        },
        {
          "type":"VariableDeclaration",
          "declarations":[
            {
              "type":"VariableDeclarator",
              "id":{
                "type":"Identifier",
                "name":"n",
                "range":[
                  46,
                  47
                ],
                "loc":{
                  "start":{
                    "line":4,
                    "column":6
                  },
                  "end":{
                    "line":4,
                    "column":7
                  }
                }
              },
              "init":{
                "type":"Literal",
                "value":10,
                "raw":"10",
                "range":[
                  50,
                  52
                ],
                "loc":{
                  "start":{
                    "line":4,
                    "column":10
                  },
                  "end":{
                    "line":4,
                    "column":12
                  }
                }
              },
              "range":[
                46,
                52
              ],
              "loc":{
                "start":{
                  "line":4,
                  "column":6
                },
                "end":{
                  "line":4,
                  "column":12
                }
              }
            }
          ],
          "kind":"const",
          "range":[
            40,
            53
          ],
          "loc":{
            "start":{
              "line":4,
              "column":0
            },
            "end":{
              "line":4,
              "column":13
            }
          }
        },
        {
          "type":"VariableDeclaration",
          "declarations":[
            {
              "type":"VariableDeclarator",
              "id":{
                "type":"Identifier",
                "name":"factorial",
                "range":[
                  59,
                  68
                ],
                "loc":{
                  "start":{
                    "line":6,
                    "column":4
                  },
                  "end":{
                    "line":6,
                    "column":13
                  }
                }
              },
              "init":{
                "type":"CallExpression",
                "callee":{
                  "type":"ArrowFunctionExpression",
                  "id":null,
                  "params":[
                    {
                      "type":"Identifier",
                      "name":"f",
                      "range":[
                        72,
                        73
                      ],
                      "loc":{
                        "start":{
                          "line":6,
                          "column":17
                        },
                        "end":{
                          "line":6,
                          "column":18
                        }
                      }
                    }
                  ],
                  "body":{
                    "type":"CallExpression",
                    "callee":{
                      "type":"Identifier",
                      "name":"f",
                      "range":[
                        77,
                        78
                      ],
                      "loc":{
                        "start":{
                          "line":6,
                          "column":22
                        },
                        "end":{
                          "line":6,
                          "column":23
                        }
                      }
                    },
                    "arguments":[
                      {
                        "type":"Identifier",
                        "name":"f",
                        "range":[
                          79,
                          80
                        ],
                        "loc":{
                          "start":{
                            "line":6,
                            "column":24
                          },
                          "end":{
                            "line":6,
                            "column":25
                          }
                        }
                      }
                    ],
                    "range":[
                      77,
                      81
                    ],
                    "loc":{
                      "start":{
                        "line":6,
                        "column":22
                      },
                      "end":{
                        "line":6,
                        "column":26
                      }
                    }
                  },
                  "generator":false,
                  "expression":true,
                  "async":false,
                  "range":[
                    72,
                    81
                  ],
                  "loc":{
                    "start":{
                      "line":6,
                      "column":17
                    },
                    "end":{
                      "line":6,
                      "column":26
                    }
                  }
                },
                "arguments":[
                  {
                    "type":"ArrowFunctionExpression",
                    "id":null,
                    "params":[
                      {
                        "type":"Identifier",
                        "name":"self",
                        "range":[
                          84,
                          88
                        ],
                        "loc":{
                          "start":{
                            "line":6,
                            "column":29
                          },
                          "end":{
                            "line":6,
                            "column":33
                          }
                        }
                      }
                    ],
                    "body":{
                      "type":"ArrowFunctionExpression",
                      "id":null,
                      "params":[
                        {
                          "type":"Identifier",
                          "name":"n",
                          "range":[
                            95,
                            96
                          ],
                          "loc":{
                            "start":{
                              "line":6,
                              "column":40
                            },
                            "end":{
                              "line":6,
                              "column":41
                            }
                          }
                        }
                      ],
                      "body":{
                        "type":"BinaryExpression",
                        "operator":"*",
                        "left":{
                          "type":"Identifier",
                          "name":"n",
                          "range":[
                            101,
                            102
                          ],
                          "loc":{
                            "start":{
                              "line":6,
                              "column":46
                            },
                            "end":{
                              "line":6,
                              "column":47
                            }
                          }
                        },
                        "right":{
                          "type":"CallExpression",
                          "callee":{
                            "type":"Identifier",
                            "name":"self",
                            "range":[
                              103,
                              107
                            ],
                            "loc":{
                              "start":{
                                "line":6,
                                "column":48
                              },
                              "end":{
                                "line":6,
                                "column":52
                              }
                            }
                          },
                          "arguments":[
                            {
                              "type":"BinaryExpression",
                              "operator":"-",
                              "left":{
                                "type":"Identifier",
                                "name":"n",
                                "range":[
                                  108,
                                  109
                                ],
                                "loc":{
                                  "start":{
                                    "line":6,
                                    "column":53
                                  },
                                  "end":{
                                    "line":6,
                                    "column":54
                                  }
                                }
                              },
                              "right":{
                                "type":"Literal",
                                "value":1,
                                "raw":"1",
                                "range":[
                                  110,
                                  111
                                ],
                                "loc":{
                                  "start":{
                                    "line":6,
                                    "column":55
                                  },
                                  "end":{
                                    "line":6,
                                    "column":56
                                  }
                                }
                              },
                              "range":[
                                108,
                                111
                              ],
                              "loc":{
                                "start":{
                                  "line":6,
                                  "column":53
                                },
                                "end":{
                                  "line":6,
                                  "column":56
                                }
                              }
                            }
                          ],
                          "range":[
                            103,
                            112
                          ],
                          "loc":{
                            "start":{
                              "line":6,
                              "column":48
                            },
                            "end":{
                              "line":6,
                              "column":57
                            }
                          }
                        },
                        "range":[
                          101,
                          112
                        ],
                        "loc":{
                          "start":{
                            "line":6,
                            "column":46
                          },
                          "end":{
                            "line":6,
                            "column":57
                          }
                        }
                      },
                      "generator":false,
                      "expression":true,
                      "async":false,
                      "range":[
                        94,
                        112
                      ],
                      "loc":{
                        "start":{
                          "line":6,
                          "column":39
                        },
                        "end":{
                          "line":6,
                          "column":57
                        }
                      }
                    },
                    "generator":false,
                    "expression":true,
                    "async":false,
                    "range":[
                      83,
                      113
                    ],
                    "loc":{
                      "start":{
                        "line":6,
                        "column":28
                      },
                      "end":{
                        "line":6,
                        "column":58
                      }
                    }
                  }
                ],
                "range":[
                  71,
                  114
                ],
                "loc":{
                  "start":{
                    "line":6,
                    "column":16
                  },
                  "end":{
                    "line":6,
                    "column":59
                  }
                }
              },
              "range":[
                59,
                114
              ],
              "loc":{
                "start":{
                  "line":6,
                  "column":4
                },
                "end":{
                  "line":6,
                  "column":59
                }
              }
            }
          ],
          "kind":"let",
          "range":[
            55,
            115
          ],
          "loc":{
            "start":{
              "line":6,
              "column":0
            },
            "end":{
              "line":6,
              "column":60
            }
          }
        },
        {
          "type":"FunctionDeclaration",
          "id":{
            "type":"Identifier",
            "name":"main",
            "range":[
              126,
              130
            ],
            "loc":{
              "start":{
                "line":8,
                "column":9
              },
              "end":{
                "line":8,
                "column":13
              }
            }
          },
          "params":[

          ],
          "body":{
            "type":"BlockStatement",
            "body":[
              {
                "type":"VariableDeclaration",
                "declarations":[
                  {
                    "type":"VariableDeclarator",
                    "id":{
                      "type":"Identifier",
                      "name":"result",
                      "range":[
                        140,
                        146
                      ],
                      "loc":{
                        "start":{
                          "line":9,
                          "column":6
                        },
                        "end":{
                          "line":9,
                          "column":12
                        }
                      }
                    },
                    "init":null,
                    "range":[
                      140,
                      146
                    ],
                    "loc":{
                      "start":{
                        "line":9,
                        "column":6
                      },
                      "end":{
                        "line":9,
                        "column":12
                      }
                    }
                  }
                ],
                "kind":"var",
                "range":[
                  136,
                  147
                ],
                "loc":{
                  "start":{
                    "line":9,
                    "column":2
                  },
                  "end":{
                    "line":9,
                    "column":13
                  }
                }
              },
              {
                "type":"ExpressionStatement",
                "expression":{
                  "type":"CallExpression",
                  "callee":{
                    "type":"MemberExpression",
                    "computed":false,
                    "object":{
                      "type":"Identifier",
                      "name":"console",
                      "range":[
                        150,
                        157
                      ],
                      "loc":{
                        "start":{
                          "line":10,
                          "column":2
                        },
                        "end":{
                          "line":10,
                          "column":9
                        }
                      }
                    },
                    "property":{
                      "type":"Identifier",
                      "name":"log",
                      "range":[
                        158,
                        161
                      ],
                      "loc":{
                        "start":{
                          "line":10,
                          "column":10
                        },
                        "end":{
                          "line":10,
                          "column":13
                        }
                      }
                    },
                    "range":[
                      150,
                      161
                    ],
                    "loc":{
                      "start":{
                        "line":10,
                        "column":2
                      },
                      "end":{
                        "line":10,
                        "column":13
                      }
                    }
                  },
                  "arguments":[
                    {
                      "type":"TemplateLiteral",
                      "quasis":[
                        {
                          "type":"TemplateElement",
                          "value":{
                            "raw":"Hi ",
                            "cooked":"Hi "
                          },
                          "tail":false,
                          "range":[
                            162,
                            168
                          ],
                          "loc":{
                            "start":{
                              "line":10,
                              "column":14
                            },
                            "end":{
                              "line":10,
                              "column":20
                            }
                          }
                        },
                        {
                          "type":"TemplateElement",
                          "value":{
                            "raw":", the factorial of ",
                            "cooked":", the factorial of "
                          },
                          "tail":false,
                          "range":[
                            176,
                            198
                          ],
                          "loc":{
                            "start":{
                              "line":10,
                              "column":28
                            },
                            "end":{
                              "line":10,
                              "column":50
                            }
                          }
                        },
                        {
                          "type":"TemplateElement",
                          "value":{
                            "raw":" is...",
                            "cooked":" is..."
                          },
                          "tail":true,
                          "range":[
                            199,
                            207
                          ],
                          "loc":{
                            "start":{
                              "line":10,
                              "column":51
                            },
                            "end":{
                              "line":10,
                              "column":59
                            }
                          }
                        }
                      ],
                      "expressions":[
                        {
                          "type":"Identifier",
                          "name":"username",
                          "range":[
                            168,
                            176
                          ],
                          "loc":{
                            "start":{
                              "line":10,
                              "column":20
                            },
                            "end":{
                              "line":10,
                              "column":28
                            }
                          }
                        },
                        {
                          "type":"Identifier",
                          "name":"n",
                          "range":[
                            198,
                            199
                          ],
                          "loc":{
                            "start":{
                              "line":10,
                              "column":50
                            },
                            "end":{
                              "line":10,
                              "column":51
                            }
                          }
                        }
                      ],
                      "range":[
                        162,
                        207
                      ],
                      "loc":{
                        "start":{
                          "line":10,
                          "column":14
                        },
                        "end":{
                          "line":10,
                          "column":59
                        }
                      }
                    }
                  ],
                  "range":[
                    150,
                    208
                  ],
                  "loc":{
                    "start":{
                      "line":10,
                      "column":2
                    },
                    "end":{
                      "line":10,
                      "column":60
                    }
                  }
                },
                "range":[
                  150,
                  209
                ],
                "loc":{
                  "start":{
                    "line":10,
                    "column":2
                  },
                  "end":{
                    "line":10,
                    "column":61
                  }
                }
              },
              {
                "type":"ExpressionStatement",
                "expression":{
                  "type":"AssignmentExpression",
                  "operator":"=",
                  "left":{
                    "type":"Identifier",
                    "name":"result",
                    "range":[
                      212,
                      218
                    ],
                    "loc":{
                      "start":{
                        "line":11,
                        "column":2
                      },
                      "end":{
                        "line":11,
                        "column":8
                      }
                    }
                  },
                  "right":{
                    "type":"CallExpression",
                    "callee":{
                      "type":"Identifier",
                      "name":"factorial",
                      "range":[
                        221,
                        230
                      ],
                      "loc":{
                        "start":{
                          "line":11,
                          "column":11
                        },
                        "end":{
                          "line":11,
                          "column":20
                        }
                      }
                    },
                    "arguments":[
                      {
                        "type":"Identifier",
                        "name":"n",
                        "range":[
                          231,
                          232
                        ],
                        "loc":{
                          "start":{
                            "line":11,
                            "column":21
                          },
                          "end":{
                            "line":11,
                            "column":22
                          }
                        }
                      }
                    ],
                    "range":[
                      221,
                      233
                    ],
                    "loc":{
                      "start":{
                        "line":11,
                        "column":11
                      },
                      "end":{
                        "line":11,
                        "column":23
                      }
                    }
                  },
                  "range":[
                    212,
                    233
                  ],
                  "loc":{
                    "start":{
                      "line":11,
                      "column":2
                    },
                    "end":{
                      "line":11,
                      "column":23
                    }
                  }
                },
                "range":[
                  212,
                  234
                ],
                "loc":{
                  "start":{
                    "line":11,
                    "column":2
                  },
                  "end":{
                    "line":11,
                    "column":24
                  }
                }
              },
              {
                "type":"ExpressionStatement",
                "expression":{
                  "type":"CallExpression",
                  "callee":{
                    "type":"MemberExpression",
                    "computed":false,
                    "object":{
                      "type":"Identifier",
                      "name":"console",
                      "range":[
                        237,
                        244
                      ],
                      "loc":{
                        "start":{
                          "line":12,
                          "column":2
                        },
                        "end":{
                          "line":12,
                          "column":9
                        }
                      }
                    },
                    "property":{
                      "type":"Identifier",
                      "name":"log",
                      "range":[
                        245,
                        248
                      ],
                      "loc":{
                        "start":{
                          "line":12,
                          "column":10
                        },
                        "end":{
                          "line":12,
                          "column":13
                        }
                      }
                    },
                    "range":[
                      237,
                      248
                    ],
                    "loc":{
                      "start":{
                        "line":12,
                        "column":2
                      },
                      "end":{
                        "line":12,
                        "column":13
                      }
                    }
                  },
                  "arguments":[
                    {
                      "type":"TemplateLiteral",
                      "quasis":[
                        {
                          "type":"TemplateElement",
                          "value":{
                            "raw":"",
                            "cooked":""
                          },
                          "tail":false,
                          "range":[
                            249,
                            252
                          ],
                          "loc":{
                            "start":{
                              "line":12,
                              "column":14
                            },
                            "end":{
                              "line":12,
                              "column":17
                            }
                          }
                        },
                        {
                          "type":"TemplateElement",
                          "value":{
                            "raw":"!!!",
                            "cooked":"!!!"
                          },
                          "tail":true,
                          "range":[
                            258,
                            263
                          ],
                          "loc":{
                            "start":{
                              "line":12,
                              "column":23
                            },
                            "end":{
                              "line":12,
                              "column":28
                            }
                          }
                        }
                      ],
                      "expressions":[
                        {
                          "type":"Identifier",
                          "name":"result",
                          "range":[
                            252,
                            258
                          ],
                          "loc":{
                            "start":{
                              "line":12,
                              "column":17
                            },
                            "end":{
                              "line":12,
                              "column":23
                            }
                          }
                        }
                      ],
                      "range":[
                        249,
                        263
                      ],
                      "loc":{
                        "start":{
                          "line":12,
                          "column":14
                        },
                        "end":{
                          "line":12,
                          "column":28
                        }
                      }
                    }
                  ],
                  "range":[
                    237,
                    264
                  ],
                  "loc":{
                    "start":{
                      "line":12,
                      "column":2
                    },
                    "end":{
                      "line":12,
                      "column":29
                    }
                  }
                },
                "range":[
                  237,
                  265
                ],
                "loc":{
                  "start":{
                    "line":12,
                    "column":2
                  },
                  "end":{
                    "line":12,
                    "column":30
                  }
                }
              }
            ],
            "range":[
              132,
              267
            ],
            "loc":{
              "start":{
                "line":8,
                "column":15
              },
              "end":{
                "line":13,
                "column":1
              }
            }
          },
          "generator":false,
          "expression":false,
          "async":false,
          "range":[
            117,
            267
          ],
          "loc":{
            "start":{
              "line":8,
              "column":0
            },
            "end":{
              "line":13,
              "column":1
            }
          }
        },
        {
          "type":"ExpressionStatement",
          "expression":{
            "type":"CallExpression",
            "callee":{
              "type":"Identifier",
              "name":"main",
              "range":[
                269,
                273
              ],
              "loc":{
                "start":{
                  "line":15,
                  "column":0
                },
                "end":{
                  "line":15,
                  "column":4
                }
              }
            },
            "arguments":[

            ],
            "range":[
              269,
              275
            ],
            "loc":{
              "start":{
                "line":15,
                "column":0
              },
              "end":{
                "line":15,
                "column":6
              }
            }
          },
          "range":[
            269,
            276
          ],
          "loc":{
            "start":{
              "line":15,
              "column":0
            },
            "end":{
              "line":15,
              "column":7
            }
          }
        }
      ],
      "sourceType":"script",
      "range":[
        0,
        276
      ],
      "loc":{
        "start":{
          "line":1,
          "column":0
        },
        "end":{
          "line":15,
          "column":7
        }
      }
    }
  }
]
'