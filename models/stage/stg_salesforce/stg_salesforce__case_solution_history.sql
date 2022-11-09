
with source as (

    select * from {{ source('raw_salesforce', 'case_solution_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        case_id,
        created_by_id,
        created_date,
        is_deleted,
        solution_id,
        system_modstamp

    from source

)

select * from renamed
