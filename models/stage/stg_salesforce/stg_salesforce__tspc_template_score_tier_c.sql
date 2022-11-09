
with source as (

    select * from {{ source('raw_salesforce', 'tspc_template_score_tier_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        tspc_color_c,
        tspc_eid_c,
        tspc_max_c,
        tspc_min_c,
        tspc_template_c

    from source

)

select * from renamed
