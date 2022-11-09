
with source as (

    select * from {{ source('raw_salesforce', 'pse_assignment_milestone_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        pse_assignment_c,
        pse_milestone_c,
        system_modstamp,
        pse_resource_id_c

    from source

)

select * from renamed
